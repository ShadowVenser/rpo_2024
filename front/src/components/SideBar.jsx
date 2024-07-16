        
import React from 'react';
import { Link } from 'react-router-dom'
import { Nav } from 'react-bootstrap'
import {faGlobe, faIdCard, faLocationDot, faPencil, faA} from "@fortawesome/free-solid-svg-icons";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";


const SideBar = props => {
    return (
        <>
        { props.expanded &&
            <Nav className={"flex-column my-sidebar my-sidebar-expanded"}>
                <Nav.Item><Nav.Link as={Link} to="/countries"><FontAwesomeIcon icon={faGlobe} />{' '}Страны</Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/artists"><FontAwesomeIcon icon={faA} />{' '}Художники</Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/paintings"><FontAwesomeIcon icon={faPencil} />{' '}Картины</Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/museums"><FontAwesomeIcon icon={faLocationDot} />{' '}Музеи</Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/users"><FontAwesomeIcon icon={faIdCard} />{' '}Пользователи</Nav.Link></Nav.Item>
            </Nav>
        }
        { !props.expanded &&
            <Nav className={"flex-column my-sidebar my-sidebar-collapsed"}>
                <Nav.Item><Nav.Link as={Link} to="/countries"><FontAwesomeIcon icon={faGlobe} size="2x" /></Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/artists"><FontAwesomeIcon icon={faA} size="2x" /></Nav.Link></Nav.Item>
               <Nav.Item><Nav.Link as={Link} to="/paintings"><FontAwesomeIcon icon={faPencil} size="2x" /></Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/museums"><FontAwesomeIcon icon={faLocationDot} size="2x" /></Nav.Link></Nav.Item>
                <Nav.Item><Nav.Link as={Link} to="/users"><FontAwesomeIcon icon={faIdCard} size="2x" /></Nav.Link></Nav.Item>
            </Nav>
        }
        </>
    )
}

export default SideBar;
            
