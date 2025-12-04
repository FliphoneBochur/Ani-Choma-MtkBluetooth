.class public abstract Lcom/google/protobuf/GeneratedMessageLite;
.super Lcom/google/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$Builder;,
        Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Lcom/google/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0

    .line 1399
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1585
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1586
    :cond_0
    nop

    .line 1587
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1588
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1591
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static emptyBooleanList()Lcom/google/protobuf/Internal$BooleanList;
    .locals 1

    .line 1469
    invoke-static {}, Lcom/google/protobuf/BooleanArrayList;->emptyList()Lcom/google/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/google/protobuf/Internal$DoubleList;
    .locals 1

    .line 1459
    invoke-static {}, Lcom/google/protobuf/DoubleArrayList;->emptyList()Lcom/google/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/google/protobuf/Internal$FloatList;
    .locals 1

    .line 1449
    invoke-static {}, Lcom/google/protobuf/FloatArrayList;->emptyList()Lcom/google/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1429
    invoke-static {}, Lcom/google/protobuf/IntArrayList;->emptyList()Lcom/google/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1439
    invoke-static {}, Lcom/google/protobuf/LongArrayList;->emptyList()Lcom/google/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1479
    invoke-static {}, Lcom/google/protobuf/ProtobufArrayList;->emptyList()Lcom/google/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 139
    :cond_0
    return-void
.end method

.method static getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 288
    if-nez v0, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    goto :goto_0

    .line 293
    :catch_0
    move-exception p0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 298
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 301
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 306
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 308
    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1146
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1147
    :catch_0
    move-exception p2

    .line 1148
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1157
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1161
    :catch_0
    move-exception p0

    .line 1162
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1163
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1165
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 1166
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1168
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1164
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 1158
    :catch_1
    move-exception p0

    .line 1159
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1412
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1413
    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1414
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1415
    return v1

    .line 1417
    :cond_0
    if-nez v0, :cond_1

    .line 1418
    const/4 p0, 0x0

    return p0

    .line 1420
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    .line 1421
    if-eqz p1, :cond_3

    .line 1422
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1423
    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1422
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    :cond_3
    return v0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$BooleanList;)Lcom/google/protobuf/Internal$BooleanList;
    .locals 1

    .line 1473
    invoke-interface {p0}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1474
    nop

    .line 1475
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1474
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;
    .locals 1

    .line 1463
    invoke-interface {p0}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1464
    nop

    .line 1465
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1464
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;
    .locals 1

    .line 1453
    invoke-interface {p0}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1454
    nop

    .line 1455
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1454
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1433
    invoke-interface {p0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1434
    nop

    .line 1435
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1434
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1443
    invoke-interface {p0}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1444
    nop

    .line 1445
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1444
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1483
    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1484
    nop

    .line 1485
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1484
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method protected static newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 318
    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1067
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1068
    new-instance v6, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1047
    new-instance v6, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1700
    nop

    .line 1702
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1701
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1700
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1709
    nop

    .line 1710
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1709
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1611
    nop

    .line 1612
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1611
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1619
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1687
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1694
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1669
    nop

    .line 1672
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 1673
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1670
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1669
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1680
    nop

    .line 1681
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1680
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1598
    nop

    .line 1599
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1598
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1654
    array-length v0, p1

    .line 1655
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1654
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1662
    array-length v0, p1

    .line 1663
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1662
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1718
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1719
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1720
    const/4 p0, 0x0

    return-object p0

    .line 1722
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1725
    nop

    .line 1726
    new-instance v1, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1727
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 1728
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1730
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1733
    nop

    .line 1734
    return-object p0

    .line 1731
    :catch_0
    move-exception p1

    .line 1732
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1723
    :catch_1
    move-exception p0

    .line 1724
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1629
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 1630
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1632
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1635
    nop

    .line 1636
    return-object p0

    .line 1633
    :catch_0
    move-exception p1

    .line 1634
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1637
    :catch_1
    move-exception p0

    .line 1638
    throw p0
.end method

.method protected static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1574
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1526
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 1530
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 1531
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1532
    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    nop

    .line 1544
    return-object p0

    .line 1538
    :catch_0
    move-exception p0

    .line 1539
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_0

    .line 1540
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1542
    :cond_0
    throw p0

    .line 1533
    :catch_1
    move-exception p1

    .line 1534
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_1

    .line 1535
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1537
    :cond_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1552
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 1554
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 1555
    add-int v4, p2, p3

    new-instance v5, Lcom/google/protobuf/ArrayDecoders$Registers;

    invoke-direct {v5, p4}, Lcom/google/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V

    .line 1557
    invoke-interface {v6, p0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 1558
    iget p1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez p1, :cond_0

    .line 1568
    nop

    .line 1569
    return-object p0

    .line 1559
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :catch_0
    move-exception p1

    .line 1567
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1561
    :catch_1
    move-exception p1

    .line 1562
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_1

    .line 1563
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1565
    :cond_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1647
    array-length v0, p1

    .line 1648
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1647
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void
.end method


# virtual methods
.method buildMessageInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 119
    if-ne p0, p1, :cond_0

    .line 120
    const/4 p1, 0x1

    return p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 p1, 0x0

    return p1

    .line 127
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method getMemoizedSerializedSize()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 271
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 272
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 274
    :cond_0
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 113
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 189
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .line 170
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 166
    return-void
.end method

.method protected final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 328
    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 160
    return-void
.end method

.method public final newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 149
    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 153
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 262
    return-void
.end method

.method public final toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 196
    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 197
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/MessageLiteToString;->toString(Lcom/google/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 267
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/google/protobuf/CodedOutputStream;)Lcom/google/protobuf/CodedOutputStreamWriter;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 268
    return-void
.end method
