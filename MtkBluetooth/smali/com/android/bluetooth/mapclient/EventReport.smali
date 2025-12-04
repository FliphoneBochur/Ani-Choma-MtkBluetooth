.class public Lcom/android/bluetooth/mapclient/EventReport;
.super Ljava/lang/Object;
.source "EventReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/EventReport$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventReport"


# instance fields
.field private final mFolder:Ljava/lang/String;

.field private final mHandle:Ljava/lang/String;

.field private final mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field private final mOldFolder:Ljava/lang/String;

.field private final mType:Lcom/android/bluetooth/mapclient/EventReport$Type;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/EventReport;->parseType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    .line 49
    sget-object v1, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_FULL:Lcom/android/bluetooth/mapclient/EventReport$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    sget-object v1, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_AVAILABLE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq v0, v1, :cond_0

    .line 50
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    :try_start_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mHandle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for handle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mHandle:Ljava/lang/String;

    .line 63
    :goto_0
    const-string v0, "folder"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mFolder:Ljava/lang/String;

    .line 65
    const-string v0, "old_folder"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mOldFolder:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    sget-object v1, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_FULL:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    sget-object v1, Lcom/android/bluetooth/mapclient/EventReport$Type;->MEMORY_AVAILABLE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq v0, v1, :cond_2

    .line 68
    const-string v0, "msg_type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iput-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    goto :goto_1

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/EventReport;->parseMsgType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/EventReport;->mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 78
    :goto_1
    goto :goto_2

    .line 79
    :cond_2
    iput-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 81
    :goto_2
    return-void
.end method

.method static fromStream(Ljava/io/DataInputStream;)Lcom/android/bluetooth/mapclient/EventReport;
    .locals 5

    .line 84
    const-string v0, "EventReport"

    .line 87
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 88
    const-string v2, "utf-8"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 91
    :goto_0
    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    .line 92
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "event"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 95
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 97
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 98
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_1
    new-instance v1, Lcom/android/bluetooth/mapclient/EventReport;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/mapclient/EventReport;-><init>(Ljava/util/HashMap;)V

    .line 104
    return-object v1

    .line 109
    :cond_2
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    const-string v1, "Invalid event received"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 114
    :catch_1
    move-exception p0

    .line 115
    const-string v1, "I/O error when parsing XML"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 112
    :catch_2
    move-exception p0

    .line 113
    const-string v1, "XML parser error when parsing XML"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_3
    :goto_3
    nop

    .line 120
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseMsgType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->values()[Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 135
    invoke-virtual {v3}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    return-object v3

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for msg_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/EventReport$Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/android/bluetooth/mapclient/EventReport$Type;->values()[Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 125
    invoke-virtual {v3}, Lcom/android/bluetooth/mapclient/EventReport$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    return-object v3

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFolder()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-object v0
.end method

.method public getOldFolder()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mOldFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/mapclient/EventReport$Type;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mType:Lcom/android/bluetooth/mapclient/EventReport$Type;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v1, "handle"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "old_folder"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mOldFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v1, "msg_type"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/EventReport;->mMsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 197
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
