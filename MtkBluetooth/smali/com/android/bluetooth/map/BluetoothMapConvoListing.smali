.class public Lcom/android/bluetooth/map/BluetoothMapConvoListing;
.super Ljava/lang/Object;
.source "BluetoothMapConvoListing.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoListing"

.field private static final XML_TAG:Ljava/lang/String; = "MAP-convo-listing"


# instance fields
.field private mHasUnread:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mHasUnread:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 46
    return-void
.end method

.method private readConversations(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 178
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->D:Z

    const-string v1, "BluetoothMapConvoListing"

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "readConversations(): "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 185
    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v3, "conversation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->D:Z

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown XML tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 195
    goto :goto_0

    .line 198
    :cond_3
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 199
    goto :goto_0

    .line 200
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mHasUnread:Z

    .line 54
    :cond_0
    return-void
.end method

.method public appendFromXml(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 144
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 150
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 151
    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "MAP-convo-listing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->D:Z

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "BluetoothMapConvoListing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown XML tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->readConversations(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    throw v0
.end method

.method public encode()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 93
    const-string v0, "MAP-convo-listing"

    const-string v1, "UTF-8"

    const-string v2, "BluetoothMapConvoListing"

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 94
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>(I)V

    .line 96
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 97
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 100
    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 104
    invoke-virtual {v7, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 110
    :catch_1
    move-exception v0

    .line 111
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    :catch_2
    move-exception v0

    .line 109
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_1
    nop

    .line 115
    :goto_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 205
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 206
    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 209
    return v1

    .line 211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 212
    return v1

    .line 214
    :cond_2
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    .line 215
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mHasUnread:Z

    iget-boolean v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mHasUnread:Z

    if-eq v2, v3, :cond_3

    .line 216
    return v1

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-nez v2, :cond_4

    .line 219
    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 220
    return v1

    .line 222
    :cond_4
    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 223
    return v1

    .line 225
    :cond_5
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    return-object v0
.end method

.method public hasUnread()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mHasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 124
    if-lez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    add-int/2addr p1, p2

    invoke-interface {v0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 126
    if-nez p1, :cond_2

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p2, p1, :cond_1

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 132
    const-string p1, "BluetoothMapConvoListing"

    const-string p2, "offset greater than list size. Returning empty list"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    .line 137
    :cond_2
    :goto_0
    return-void
.end method

.method public sort()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    return-void
.end method
