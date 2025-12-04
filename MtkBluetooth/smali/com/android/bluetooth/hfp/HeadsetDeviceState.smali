.class Lcom/android/bluetooth/hfp/HeadsetDeviceState;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetDeviceState.java"


# instance fields
.field mBatteryCharge:I

.field mRoam:I

.field mService:I

.field mSignal:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    .line 47
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    .line 48
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    .line 49
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    .line 50
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "[hasCellularService="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, ", isRoaming="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, ", signalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, ", batteryCharge="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method
