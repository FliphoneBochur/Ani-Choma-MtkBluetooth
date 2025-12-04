.class public final Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3715
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->access$6600()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3716
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 3708
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeviceClass()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3765
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->copyOnWrite()V

    .line 3766
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->access$6800(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 3767
    return-object p0
.end method

.method public clearDeviceType()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3812
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->copyOnWrite()V

    .line 3813
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->access$7000(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 3814
    return-object p0
.end method

.method public getDeviceClass()I
    .locals 1

    .line 3741
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDeviceClass()I

    move-result v0

    return v0
.end method

.method public getDeviceType()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 1

    .line 3790
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDeviceType()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceClass()Z
    .locals 1

    .line 3729
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->hasDeviceClass()Z

    move-result v0

    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    .line 3779
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->hasDeviceType()Z

    move-result v0

    return v0
.end method

.method public setDeviceClass(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3752
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->copyOnWrite()V

    .line 3753
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->access$6700(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;I)V

    .line 3754
    return-object p0
.end method

.method public setDeviceType(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3800
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->copyOnWrite()V

    .line 3801
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->access$6900(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;)V

    .line 3802
    return-object p0
.end method
