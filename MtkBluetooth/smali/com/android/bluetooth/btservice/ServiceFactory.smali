.class public Lcom/android/bluetooth/btservice/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1

    .line 30
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    return-object v0
.end method

.method public getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->get()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v0

    return-object v0
.end method

.method public getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    return-object v0
.end method

.method public getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    return-object v0
.end method

.method public getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;
    .locals 1

    .line 42
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    return-object v0
.end method

.method public getHidHostService()Lcom/android/bluetooth/hid/HidHostService;
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->getHidHostService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    return-object v0
.end method

.method public getPanService()Lcom/android/bluetooth/pan/PanService;
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->getPanService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    return-object v0
.end method
