package ru.iu3.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.backend.models.*;
import ru.iu3.backend.repositories.ArtistRepository;
import ru.iu3.backend.repositories.CountryRepository;
import ru.iu3.backend.repositories.MuseumRepository;
import ru.iu3.backend.repositories.PaintingRepository;


import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class PaintingController {
    @Autowired
    PaintingRepository paintingRepository;

    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    MuseumRepository museumRepository;

    @GetMapping("/paintings")
    public List
    getAllPaintings() {
        return paintingRepository.findAll();
    }

    @PostMapping("/paintings")
    public ResponseEntity<Object> createPainting(@RequestBody Painting painting)
            throws Exception {
        try {
            Painting nc = paintingRepository.save(painting);
            return new ResponseEntity<Object>(nc, HttpStatus.OK);
        }
        catch(Exception ex) {
            String error;
            if (ex.getMessage().contains("not-null"))
                error = "NullVariableError";
            else
                error = "UndefinedError";
            Map<String, String>
                    map =  new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }


    @PutMapping("/paintings/{id}")
    public ResponseEntity<Painting> updatePainting(@PathVariable(value = "id") Long paintingID,
                                               @RequestBody Painting paintingDetails) {
        Painting painting = null;
        Optional<Painting>
                cc = paintingRepository.findById(paintingID);
        if (cc.isPresent()) {
            painting = cc.get();
            painting.name = paintingDetails.name;
            painting.year = paintingDetails.year;
            Optional<Artist> artist = artistRepository.findById(paintingDetails.artist.id);
            Optional<Museum> location = museumRepository.findById(painting.museum.id);
            if (artist.isPresent()) {
                painting.artist = artist.get();
            }
            else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "artist not found");
            }
            if (location.isPresent()) {
                painting.museum = location.get();
            }
            else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "museum not found");
            }
            paintingRepository.save(painting);
            return ResponseEntity.ok(painting);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "painting not found");
        }
    }


    @DeleteMapping("/paintings/{id}")
    public ResponseEntity<Object> deleteCountry(@PathVariable(value = "id") Long paintingID) {
        Optional<Painting>
                painting = paintingRepository.findById(paintingID);
        Map<String, Boolean>
                resp = new HashMap<>();
        if (painting.isPresent()) {
            paintingRepository.delete(painting.get());
            resp.put("deleted", Boolean.TRUE);
        }
        else
            resp.put("deleted", Boolean.FALSE);
        return ResponseEntity.ok(resp);
    }
}