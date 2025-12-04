.class public Lcom/android/bluetooth/map/BluetoothMapMessageListing;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListing.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListing"


# instance fields
.field private mHasUnread:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mHasUnread:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getReadBool()Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mHasUnread:Z

    .line 49
    :cond_0
    return-void
.end method

.method public encode(ZLjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 93
    const-string v0, "MAP-msg-listing"

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 94
    nop

    .line 96
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "00:26:e8"

    invoke-static {v2, v3}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 99
    const-string v3, "UTF-8"

    const-string v4, "BluetoothMapMessageListing"

    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    const-string v2, "java_interop: Remote is Mercedes Benz, using Xml Workaround."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 103
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 104
    const-string v5, "\n"

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 106
    :cond_0
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>(I)V

    .line 107
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 108
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 112
    :goto_0
    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v6, "version"

    invoke-interface {v2, v5, v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 116
    invoke-virtual {v6, v2, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 122
    :catch_1
    move-exception p1

    .line 123
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 120
    :catch_2
    move-exception p1

    .line 121
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_2
    nop

    .line 128
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "28:a1:83"

    invoke-static {p1, p2}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string p2, "&amp;"

    const-string v0, "&"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string p2, "&lt;"

    const-string v0, "<"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    const-string p2, "&gt;"

    const-string v0, ">"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 130
    return-object p1

    .line 136
    :cond_2
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 59
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
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    return-object v0
.end method

.method public hasUnread()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mHasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 145
    if-lez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    add-int/2addr p1, p2

    invoke-interface {v0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 147
    if-nez p1, :cond_2

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p2, p1, :cond_1

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 153
    const-string p1, "BluetoothMapMessageListing"

    const-string p2, "offset greater than list size. Returning empty list"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    .line 158
    :cond_2
    :goto_0
    return-void
.end method

.method public sort()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->mList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 141
    return-void
.end method
