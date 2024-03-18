


const init = () => {

    const showAlert = (message) => {
        alert(message);
    }

    const requestFullScreen = () => {
        document.documentElement.requestFullscreen();
    }

    const getData = () => {
        return "abc123";
    }

    const getJsonData = () => {
        const json = { 'foo': 'bar' }
        return JSON.stringify(json);
    }

    const getSomeAsyncData = async () => {
        await new Promise((resolve, _) => setTimeout(resolve, 1000));
        return "foobar";
    }

    const shareImage = async (url, filename) => {
        const response = await fetch(url.toString());
        const blob = await response.blob();

        const filesArray = [
            new File([blob], filename, {
                type: 'image/jpeg',
                lastModified: new Date().getTime(),
            }),
        ];

        const shareData = {
            files: filesArray,
        };

        if (navigator.canShare && navigator.canShare(shareData)) {

            await navigator.share(shareData);
            return true;

        } else {
            alert("Can't share!")
            return false;
        }

    }

    window._showAlert = showAlert;
    window._requestFullScreen = requestFullScreen;
    window._getData = getData;
    window._getJsonData = getJsonData;
    window._getSomeAsyncData = getSomeAsyncData;
    window._shareImage = shareImage;

}


window.onload = () => {
    init();
}