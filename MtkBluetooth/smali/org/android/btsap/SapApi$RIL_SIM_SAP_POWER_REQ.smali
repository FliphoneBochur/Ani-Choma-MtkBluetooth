.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_POWER_REQ"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private state_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1226
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1264
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1226
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1316
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1310
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->clearState()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1248
    return-object p0
.end method

.method public clearState()Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1

    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    .line 1241
    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1242
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1267
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 1269
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getSerializedSize()I

    .line 1271
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1276
    nop

    .line 1277
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1278
    const/4 v0, 0x1

    .line 1279
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getState()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 1281
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->cachedSize:I

    .line 1282
    return v1
.end method

.method public getState()Z
    .locals 1

    .line 1232
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .line 1233
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1252
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1291
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1295
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    return-object p0

    .line 1301
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;

    .line 1305
    :cond_1
    goto :goto_0

    .line 1293
    :cond_2
    return-object p0
.end method

.method public setState(Z)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;
    .locals 1

    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState:Z

    .line 1236
    iput-boolean p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->state_:Z

    .line 1237
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;->getState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1262
    :cond_0
    return-void
.end method
