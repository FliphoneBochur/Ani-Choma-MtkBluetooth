.class public final enum Lcom/android/bluetooth/mapclient/EventReport$Type;
.super Ljava/lang/Enum;
.source "EventReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/EventReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/EventReport$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum CONCERSATION_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum DELIVERY_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum DELIVERY_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MEMORY_AVAILABLE:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MEMORY_FULL:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MESSAGE_DELETED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MESSAGE_EXTENDED_DATA_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MESSAGE_REMOVED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum MESSAGE_SHIFT:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum NEW_MESSAGE:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum PARTICIPANT_CHAT_STATE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum PARTICIPANT_PRESENCE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum READ_STATUS_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum SENDING_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

.field public static final enum SENDING_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;


# instance fields
.field private final mSpecName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 201
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "NEW_MESSAGE"

    const/4 v2, 0x0

    const-string v3, "NewMessage"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->NEW_MESSAGE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 202
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "DELIVERY_SUCCESS"

    const/4 v3, 0x1

    const-string v4, "DeliverySuccess"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 203
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "SENDING_SUCCESS"

    const/4 v4, 0x2

    const-string v5, "SendingSuccess"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 204
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "DELIVERY_FAILURE"

    const/4 v5, 0x3

    const-string v6, "DeliveryFailure"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 205
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "SENDING_FAILURE"

    const/4 v6, 0x4

    const-string v7, "SendingFailure"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 206
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MEMORY_FULL"

    const/4 v7, 0x5

    const-string v8, "MemoryFull"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_FULL:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 207
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MEMORY_AVAILABLE"

    const/4 v8, 0x6

    const-string v9, "MemoryAvailable"

    invoke-direct {v0, v1, v8, v9}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_AVAILABLE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 208
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MESSAGE_DELETED"

    const/4 v9, 0x7

    const-string v10, "MessageDeleted"

    invoke-direct {v0, v1, v9, v10}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_DELETED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 209
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MESSAGE_SHIFT"

    const/16 v10, 0x8

    const-string v11, "MessageShift"

    invoke-direct {v0, v1, v10, v11}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_SHIFT:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 210
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "READ_STATUS_CHANGED"

    const/16 v11, 0x9

    const-string v12, "ReadStatusChanged"

    invoke-direct {v0, v1, v11, v12}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->READ_STATUS_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 211
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MESSAGE_REMOVED"

    const/16 v12, 0xa

    const-string v13, "MessageRemoved"

    invoke-direct {v0, v1, v12, v13}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_REMOVED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 212
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "MESSAGE_EXTENDED_DATA_CHANGED"

    const/16 v13, 0xb

    const-string v14, "MessageExtendedDataChanged"

    invoke-direct {v0, v1, v13, v14}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_EXTENDED_DATA_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 213
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "PARTICIPANT_PRESENCE_CHANGED"

    const/16 v14, 0xc

    const-string v15, "ParticipantPresenceChanged"

    invoke-direct {v0, v1, v14, v15}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->PARTICIPANT_PRESENCE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 214
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "PARTICIPANT_CHAT_STATE_CHANGED"

    const/16 v15, 0xd

    const-string v14, "ParticipantChatStateChanged"

    invoke-direct {v0, v1, v15, v14}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->PARTICIPANT_CHAT_STATE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 215
    new-instance v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    const-string v1, "CONCERSATION_CHANGED"

    const/16 v14, 0xe

    const-string v15, "ConversationChanged"

    invoke-direct {v0, v1, v14, v15}, Lcom/android/bluetooth/mapclient/EventReport$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->CONCERSATION_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 200
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/EventReport$Type;

    sget-object v15, Lcom/android/bluetooth/mapclient/EventReport$Type;->NEW_MESSAGE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_FULL:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_AVAILABLE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_DELETED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_SHIFT:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->READ_STATUS_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_REMOVED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->MESSAGE_EXTENDED_DATA_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->PARTICIPANT_PRESENCE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->PARTICIPANT_CHAT_STATE_CHANGED:Lcom/android/bluetooth/mapclient/EventReport$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/android/bluetooth/mapclient/EventReport$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/EventReport$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput-object p3, p0, Lcom/android/bluetooth/mapclient/EventReport$Type;->mSpecName:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/EventReport$Type;
    .locals 1

    .line 200
    const-class v0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/EventReport$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/EventReport$Type;
    .locals 1

    .line 200
    sget-object v0, Lcom/android/bluetooth/mapclient/EventReport$Type;->$VALUES:[Lcom/android/bluetooth/mapclient/EventReport$Type;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/EventReport$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/EventReport$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport$Type;->mSpecName:Ljava/lang/String;

    return-object v0
.end method
