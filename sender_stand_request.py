"""Екатерина Бурнашова, 12-я когорта — Финальный проект. Инженер по тестированию плюс"""
import configuration
import requests
import data


def create_order(order_body):
    """Запрос на создание заказа"""
    return requests.post(configuration.URL_SERVICE + configuration.CREATE_ORDER, json=order_body)


def get_order_information_by_track(track):
    """Запрос на получение информации о заказе по треку заказа"""
    return requests.get(configuration.URL_SERVICE + configuration.INFORMATION_ABOUT_THE_ORDER + str(track))


def test_get_order_information_by_track():
    """Автотест"""
    track = create_order(data.order_body).json()['track']
    response = get_order_information_by_track(track)
    assert response.status_code == 200
