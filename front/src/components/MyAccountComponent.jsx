import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {connect, useDispatch} from "react-redux";
import {alertActions} from "../utils/Rdx";
import Utils from "../utils/Utils";
import { useForm } from "react-hook-form";
import {useNavigate} from "react-router-dom";

const MyAccountComponent = props => {

    const navigate = useNavigate();
    const dispatch = useDispatch()
    const {register, handleSubmit, setValue : mySetValue } = useForm();
    const [show_pwd, setShowPwd] = useState(false);
    const uid = Utils.getUser().tocken;


    const onSubmit = data => {
        console.log(data);
        console.log("tester");
        console.log(show_pwd ? Utils.getUser().email : data.email);
        let user = {
            email: show_pwd ? Utils.getUser().email : data.email,
            token: Utils.getUser().token,
            login: Utils.getUser().login,
            password: show_pwd ? data.pwd : Utils.getUser().password,
            np: data.pwd2
        }
        console.log("!user!");
        console.log(user);
        if (validate(data)) {
            BackendService.updateUser(user)
                .then(() => {
                    navigate(`/users/${uid}`);
                })
                .catch(() => {
                })
        }
    }



    const onSetPasswordClick = () => {
        setShowPwd(true );

    }

    const validate = values => {
        let e = null
        if (values.pwd) {
            if (values.pwd2.length < 8)
                e = 'Длина пароля должна быть не меньше 8 символов'
            else if (!values.pwd2)
                e = 'Пожалуйста повторите ввод пароля'
            else if (values.pwd !== values.pwd2)
                e = 'Пароли не совпадают'
        }
        if (e != null) {
            dispatch(alertActions.error(e))
            return false;
        }
        return true;
    }

    return (
        <div>
            <div className="container">
                <div className="row my-2 ms-0">
                    <h3>Мой аккаунт</h3>
                    <div>
                        <button className="btn btn-outline-secondary float-end"
                                onClick={() => navigate("/home")}>
                            <FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад
                        </button>
                    </div>
                </div>
                <form onSubmit={handleSubmit(onSubmit)}>
                    <fieldset className="form-group mt-2">
                        <label>Логин</label>
                        <p><b>{Utils.getUser().login}</b></p>
                    </fieldset>
                    {
                        !show_pwd &&
                        <fieldset className="form-group mt-2" >
                            <label>Email</label>
                            <input {...register("email")} className="form-control" type="email"/>
                        </fieldset>
                    }
                    {
                        show_pwd &&
                        <fieldset className="form-group mt-2">
                            <label>Email</label>
                            <p><b>{Utils.getUser().email}</b></p>
                        </fieldset>
                    }
                    {
                        show_pwd &&
                        <fieldset className="form-group mt-2">
                            <label>Введите пароль</label>
                            <input className="form-control" type="password" {...register("pwd")}/>
                        </fieldset>
                    }
                    {
                        show_pwd &&
                        <fieldset className="form-group-mt-2">
                            <label>Повторите пароль</label>
                            <input className="form-control" type="password" {...register("pwd2", {minLength: 8})}/>
                        </fieldset>
                    }
                    {
                        !show_pwd && <div>
                            <button className="btn btn-outline-secondary mt-2"
                                    onClick={onSetPasswordClick}>Изменить пароль
                            </button>
                        </div>
                    }
                    <button
                        className="btn btn-outline-secondary"
                        type="submit"><FontAwesomeIcon
                        icon={faSave} />{' '}Сохранить</button>
                </form>
            </div>
        </div>
    )
}

export default MyAccountComponent;