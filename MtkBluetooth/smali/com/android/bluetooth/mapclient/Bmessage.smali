.class public Lcom/android/bluetooth/mapclient/Bmessage;
.super Ljava/lang/Object;
.source "Bmessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/Bmessage$Type;,
        Lcom/android/bluetooth/mapclient/Bmessage$Status;
    }
.end annotation


# instance fields
.field mBbodyCharset:Ljava/lang/String;

.field mBbodyEncoding:Ljava/lang/String;

.field mBbodyLanguage:Ljava/lang/String;

.field mBbodyLength:I

.field mBmsgFolder:Ljava/lang/String;

.field mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

.field mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field mBmsgVersion:Ljava/lang/String;

.field mMessage:Ljava/lang/String;

.field mOriginators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mRecipients:Ljava/util/ArrayList;

    .line 55
    return-void
.end method


# virtual methods
.method public addOriginator(Lcom/android/vcard/VCardEntry;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-object p0
.end method

.method public addRecipient(Lcom/android/vcard/VCardEntry;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-object p0
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginator()Lcom/android/vcard/VCardEntry;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry;

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mOriginators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Lcom/android/bluetooth/mapclient/Bmessage$Status;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    return-object v0
.end method

.method public setBodyContent(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyEncoding:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setFolder(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgFolder:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyLanguage:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setStatus(Lcom/android/bluetooth/mapclient/Bmessage$Status;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    .line 89
    return-object p0
.end method

.method public setType(Lcom/android/bluetooth/mapclient/Bmessage$Type;)Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 98
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    :try_start_0
    const-string v1, "status"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgStatus:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBmsgFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "charset"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mBbodyCharset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Bmessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 160
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
