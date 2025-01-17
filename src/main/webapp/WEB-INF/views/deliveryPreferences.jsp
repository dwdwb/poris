<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <title>배송지 선택 페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/deliveryPreferences_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/deliveryPreferences.js"></script>

</head>
<body>
    <div>
        <header class="content-head">
            <h1 class="content-head-title">배송 요청사항</h1>
        </header>
        <section class="content-body">
            <div class="content-body-corset">

                <div class="covid-19-sub__messages">
                    <span class="covid-19-sub__messages_text">사회적 거리두기를 위해, 모든 배송을 비대면으로 진행합니다.<br>‘직접 받고 부재 시 문 앞’을 선택해도 문 앞으로 배송합니다.</span>
                </div>

                <form action="#" method="get" class="delivery-preferences">

                    <div class="preference-required __AA01_PUT_FRONT_OF_DOOR">
                        <label class="preference-required__radio-row" for="_AA01_PUT_FRONT_OF_DOOR">
                            <input type="radio" class="preference-required__radio-v1 _radioInput" id="_AA01_PUT_FRONT_OF_DOOR" name="required_label" value="문 앞">
                            <span class="preference-required__label">문 앞</span>
                        </label>
                    </div>

                    <div class="preference-required __AA01_DIRECT_RECEIVE_AS_FRONT_OF_DOOR">
                        <label class="preference-required__radio-row" for="_AA01_DIRECT_RECEIVE_AS_FRONT_OF_DOOR">
                            <input type="radio" class="preference-required__radio-v1 _radioInput" id="_AA01_DIRECT_RECEIVE_AS_FRONT_OF_DOOR" name="required_label" value="직접 받고 부재 시 문 앞" data-preference="{ &quot;root&quot;: &quot;__AA01_DIRECT_RECEIVE_AS_FRONT_OF_DOOR&quot;, &quot;isRequiredTextInput&quot;: false }">
                            <span class="preference-required__label">직접 받고 부재 시 문 앞</span>
                        </label>
                    </div>

                    <div class="preference-required __AA01_KEEP_LOBBY">
                        <label class="preference-required__radio-row" for="_AA01_KEEP_LOBBY">
                            <input type="radio" class="preference-required__radio-v1 _radioInput" id="_AA01_KEEP_LOBBY" name="required_label" value="경비실" data-preference="{ &quot;root&quot;: &quot;__AA01_KEEP_LOBBY&quot;, &quot;isRequiredTextInput&quot;: false }">
                            <span class="preference-required__label">경비실</span>
                        </label>
                    </div>

                    <div class="preference-required __AA01_KEEP_IN_LOCKER">
                        <label class="preference-required__radio-row" for="_AA01_KEEP_IN_LOCKER">
                            <input type="radio" class="preference-required__radio-v1 _radioInput" id="_AA01_KEEP_IN_LOCKER" name="required_label" value="택배함">
                            <span class="preference-required__label">택배함</span>
                        </label>
                        
                        <div class="preference-required__option-row _textExtension" id="locker_detail_form" style="display: none;">
                            <div class="preference-required__option-notice">로켓배송에만 사용됩니다.</div>
                            
                            <div class="preference-sub">
                                <div>
                                    <label class="titled-text-field titled-text-field--active" for="__AA01_KEEP_IN_LOCKER">
                                        <input type="text" autocomplete="off" class="titled-text-field__input _textInput" name="required_message" value="" maxlength="50" id="__AA01_KEEP_IN_LOCKER" placeholder="택배함 번호 (필수)">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="preference-required __AA01_OTHER_PLACE">
                        <label class="preference-required__radio-row" for="_AA01_OTHER_PLACE">
                            <input type="radio" class="preference-required__radio-v1 _radioInput" id="_AA01_OTHER_PLACE" name="required_label" value="기타사항">
                            <span class="preference-required__label">기타사항</span>
                        </label>
                        
                        <div class="preference-required__option-row _textExtension" id="other_place_detail_form"style="display: none;">
                            <div class="preference-required__option-notice">소화전/EPS/TPS 등은 안전상 보관 불가</div>
                            <div class="preference-sub">
                                <div>
                                    <label class="titled-text-field _textStatusTarget titled-text-field--active" for="__AA01_OTHER_PLACE">
                                        <input type="text" autocomplete="off" class="titled-text-field__input _textInput" name="required_message" value="" maxlength="50" id="__AA01_OTHER_PLACE" placeholder="장소만 입력 (필수)">
                                    </label>  
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="preference-optional">
                        <h2 class="preference-optional__title">공동현관 출입번호</h2>

                        <div class="preference-optional__item-row __AA01_ADDITIONAL_LOBBY_PW">
                            <div class="preference-sub preference-sub__lobby-password">
                                <div class="preference-sub__text-field-row preference-sub__text-field-row--length-counter">
                                    <label class="preference-required__radio-row" for="__AA01_ADDITIONAL_LOBBY_PW_RADIO">
                                        <input type="radio" class="preference-required__radio-v1 _radioInput" id="__AA01_ADDITIONAL_LOBBY_PW_RADIO" name="optional_check_checkbox">
                                        <input type="text" class="preference-sub__text-field-row--input _textInput" name="optional_message" value="" maxlength="50" id="__AA01_ADDITIONAL_LOBBY_PW" placeholder="예 : #1234" autocomplete="off">
                                        <div class="preference-sub__length-counter _textLengthStatusTarget" style="display: none;">0/50</div>
                                    </label>
                                </div>
                            </div>
                        </div>


                        <div class="preference-optional__item-row __AA01_ADDITIONAL_EASY_ACCESS_LOBBY">
                            <div class="preference-sub preference-sub__easy-access-lobby">
                                <input type="hidden" class="_hiddenInput" name="optional_check_code" value="AA01_ADDITIONAL_EASY_ACCESS_LOBBY">
                                <label for="__AA01_ADDITIONAL_EASY_ACCESS_LOBBY" class="preference-required__radio-row">
                                    <input type="radio" name="optional_check_checkbox" id="__AA01_ADDITIONAL_EASY_ACCESS_LOBBY" class="preference-required__radio-v1 _radioInput" value="true">
                                    <span class="preference-required__label">비밀번호없이 출입 가능해요</span>
                                </label>
                                <input type="hidden" class="_hiddenInput" name="public_entrance_option" value="">
                            </div>
                        </div>

                        <div class="preference-required__radio-inform-text">
                            입력된 공동현관 출입번호는 쿠팡이 로켓배송을 위해 필요한 정보로, 향후 배송을 위해 필요한 기간 동안 보관하는데 동의합니다.
                        </div>
                    </div>

                    <button type="submit" class="delivery-preferences__save-button  _pickerFormSaveTrigger">
                        <span class="delivery-preferences__button-label">동의하고 저장하기</span>
                    </button>

                </form>




            </div>
        </section>
    </div>
</div>
</html>