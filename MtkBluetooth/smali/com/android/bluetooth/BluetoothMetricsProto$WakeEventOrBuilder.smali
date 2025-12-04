.class public interface abstract Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;
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
    name = "WakeEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getEventTimeMillis()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRequestor()Ljava/lang/String;
.end method

.method public abstract getRequestorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWakeEventType()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
.end method

.method public abstract hasEventTimeMillis()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasRequestor()Z
.end method

.method public abstract hasWakeEventType()Z
.end method
