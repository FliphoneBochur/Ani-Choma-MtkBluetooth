.class public interface abstract Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothSessionOrBuilder"
.end annotation


# virtual methods
.method public abstract getA2DpSession()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
.end method

.method public abstract getConnectionTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
.end method

.method public abstract getDeviceConnectedTo()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
.end method

.method public abstract getDisconnectReason()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDisconnectReasonBytes()Lcom/google/protobuf/ByteString;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDisconnectReasonType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
.end method

.method public abstract getRfcommSession()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
.end method

.method public abstract getSessionDurationSec()J
.end method

.method public abstract hasA2DpSession()Z
.end method

.method public abstract hasConnectionTechnologyType()Z
.end method

.method public abstract hasDeviceConnectedTo()Z
.end method

.method public abstract hasDisconnectReason()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasDisconnectReasonType()Z
.end method

.method public abstract hasRfcommSession()Z
.end method

.method public abstract hasSessionDurationSec()Z
.end method
