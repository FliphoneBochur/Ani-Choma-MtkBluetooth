.class Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "ActiveDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/ActiveDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerAudioDeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;->this$0:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;-><init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V

    return-void
.end method

.method private isWiredAudioHeadset(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    .line 335
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 343
    const/4 p1, 0x0

    return p1

    .line 339
    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 6

    .line 349
    const-string v0, "BluetoothActiveDeviceManager"

    const-string v1, "onAudioDevicesAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    nop

    .line 352
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio device added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;->isWiredAudioHeadset(Landroid/media/AudioDeviceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    nop

    .line 359
    goto :goto_1

    .line 352
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_1
    :goto_1
    nop

    .line 367
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 371
    return-void
.end method
