.class abstract Lcom/android/bluetooth/mapclient/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field protected static final ATTACHMENT_OFF:B = 0x0t

.field protected static final ATTACHMENT_ON:B = 0x1t

.field protected static final CHARSET_NATIVE:B = 0x0t

.field protected static final CHARSET_UTF8:B = 0x1t

.field protected static final FILLER_BYTE:[B

.field protected static final NOTIFICATION_OFF:B = 0x0t

.field protected static final NOTIFICATION_ON:B = 0x1t

.field protected static final OAP_TAGID_ATTACHMENT:B = 0xat

.field protected static final OAP_TAGID_CHARSET:B = 0x14t

.field protected static final OAP_TAGID_FILTER_MESSAGE_TYPE:B = 0x3t

.field protected static final OAP_TAGID_FILTER_ORIGINATOR:B = 0x8t

.field protected static final OAP_TAGID_FILTER_PERIOD_BEGIN:B = 0x4t

.field protected static final OAP_TAGID_FILTER_PERIOD_END:B = 0x5t

.field protected static final OAP_TAGID_FILTER_PRIORITY:B = 0x9t

.field protected static final OAP_TAGID_FILTER_READ_STATUS:B = 0x6t

.field protected static final OAP_TAGID_FILTER_RECIPIENT:B = 0x7t

.field protected static final OAP_TAGID_FOLDER_LISTING_SIZE:B = 0x11t

.field protected static final OAP_TAGID_MAS_INSTANCE_ID:B = 0xft

.field protected static final OAP_TAGID_MAX_LIST_COUNT:B = 0x1t

.field protected static final OAP_TAGID_MESSAGES_LISTING_SIZE:B = 0x12t

.field protected static final OAP_TAGID_MSE_TIME:B = 0x19t

.field protected static final OAP_TAGID_NEW_MESSAGE:B = 0xdt

.field protected static final OAP_TAGID_NOTIFICATION_STATUS:B = 0xet

.field protected static final OAP_TAGID_PARAMETER_MASK:B = 0x10t

.field protected static final OAP_TAGID_RETRY:B = 0xct

.field protected static final OAP_TAGID_START_OFFSET:B = 0x2t

.field protected static final OAP_TAGID_STATUS_INDICATOR:B = 0x17t

.field protected static final OAP_TAGID_STATUS_VALUE:B = 0x18t

.field protected static final OAP_TAGID_SUBJECT_LENGTH:B = 0x13t

.field protected static final OAP_TAGID_TRANSPARENT:B = 0xbt

.field protected static final RETRY_OFF:B = 0x0t

.field protected static final RETRY_ON:B = 0x1t

.field protected static final STATUS_INDICATOR_DELETED:B = 0x1t

.field protected static final STATUS_INDICATOR_READ:B = 0x0t

.field protected static final STATUS_NO:B = 0x0t

.field protected static final STATUS_YES:B = 0x1t

.field protected static final TRANSPARENT_OFF:B = 0x0t

.field protected static final TRANSPARENT_ON:B = 0x1t


# instance fields
.field protected mHeaderSet:Ljavax/obex/HeaderSet;

.field protected mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/mapclient/Request;->FILLER_BYTE:[B

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Request;->mHeaderSet:Ljavax/obex/HeaderSet;

    .line 78
    return-void
.end method


# virtual methods
.method public abstract execute(Ljavax/obex/ClientSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected executeGet(Ljavax/obex/ClientSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    nop

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Request;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p1

    check-cast p1, Ljavax/obex/ClientOperation;

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/obex/ClientOperation;->setGetFinalFlag(Z)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavax/obex/ClientOperation;->continueOperation(ZZ)Z

    .line 103
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/mapclient/Request;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    .line 105
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/mapclient/Request;->readResponse(Ljava/io/InputStream;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->close()V

    .line 111
    invoke-virtual {p1}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/mapclient/Request;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    return-void

    .line 112
    :catch_0
    move-exception p1

    .line 113
    const/16 v0, 0xd0

    iput v0, p0, Lcom/android/bluetooth/mapclient/Request;->mResponseCode:I

    .line 115
    throw p1
.end method

.method protected executePut(Ljavax/obex/ClientSession;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    nop

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Request;->mHeaderSet:Ljavax/obex/HeaderSet;

    array-length v1, p2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v0, v2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Request;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljavax/obex/Operation;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 129
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 131
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/mapclient/Request;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    .line 133
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V

    .line 134
    invoke-interface {p1}, Ljavax/obex/Operation;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/mapclient/Request;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    return-void

    .line 135
    :catch_0
    move-exception p1

    .line 136
    const/16 p2, 0xd0

    iput p2, p0, Lcom/android/bluetooth/mapclient/Request;->mResponseCode:I

    .line 138
    throw p1
.end method

.method public final isSuccess()Z
    .locals 2

    .line 143
    iget v0, p0, Lcom/android/bluetooth/mapclient/Request;->mResponseCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 0

    .line 152
    return-void
.end method
