.class public interface abstract Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;
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
    name = "ScanEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getEventTimeMillis()J
.end method

.method public abstract getInitiator()Ljava/lang/String;
.end method

.method public abstract getInitiatorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNumberResults()I
.end method

.method public abstract getScanEventType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
.end method

.method public abstract getScanTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
.end method

.method public abstract hasEventTimeMillis()Z
.end method

.method public abstract hasInitiator()Z
.end method

.method public abstract hasNumberResults()Z
.end method

.method public abstract hasScanEventType()Z
.end method

.method public abstract hasScanTechnologyType()Z
.end method
