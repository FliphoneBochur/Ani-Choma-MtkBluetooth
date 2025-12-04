.class Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;
.super Landroid/bluetooth/IBluetoothAvrcpTarget$Stub;
.source "AvrcpTargetService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvrcpTargetBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpTarget$Stub;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 491
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 496
    return-void
.end method

.method public sendVolumeChanged(I)V
    .locals 1

    .line 500
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string p1, "AvrcpTargetService"

    const-string v0, "sendVolumeChanged not allowed for non-active user"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_1

    .line 506
    return-void

    .line 509
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sendVolumeChanged(I)V

    .line 510
    return-void
.end method
