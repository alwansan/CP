.class public Lcom/connectsdk/core/TextInputStatusInfo;
.super Ljava/lang/Object;
.source "TextInputStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;
    }
.end annotation


# instance fields
.field public autoCapitalization:Z

.field public contentType:Ljava/lang/String;

.field public correctionEnabled:Z

.field public focusChanged:Z

.field public focused:Z

.field public hiddenText:Z

.field public predictionEnabled:Z

.field public rawData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focused:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->predictionEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->correctionEnabled:Z

    .line 6
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->autoCapitalization:Z

    .line 7
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->hiddenText:Z

    .line 8
    iput-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focusChanged:Z

    return-void
.end method


# virtual methods
.method public getRawData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->rawData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTextInputType()Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;->DEFAULT:Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;

    .line 2
    iget-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "number"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;->NUMBER:Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    const-string v2, "phonenumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;->PHONE_NUMBER:Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;->URL:Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;->EMAIL:Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public isAutoCapitalization()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->autoCapitalization:Z

    return v0
.end method

.method public isCorrectionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->correctionEnabled:Z

    return v0
.end method

.method public isFocusChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focusChanged:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focused:Z

    return v0
.end method

.method public isHiddenText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->hiddenText:Z

    return v0
.end method

.method public isPredictionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/core/TextInputStatusInfo;->predictionEnabled:Z

    return v0
.end method

.method public setAutoCapitalization(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->autoCapitalization:Z

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCorrectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->correctionEnabled:Z

    return-void
.end method

.method public setFocusChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focusChanged:Z

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->focused:Z

    return-void
.end method

.method public setHiddenText(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->hiddenText:Z

    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->predictionEnabled:Z

    return-void
.end method

.method public setRawData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->rawData:Lorg/json/JSONObject;

    return-void
.end method

.method public setTextInputType(Lcom/connectsdk/core/TextInputStatusInfo$TextInputType;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/connectsdk/core/TextInputStatusInfo$1;->$SwitchMap$com$connectsdk$core$TextInputStatusInfo$TextInputType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "number"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "email"

    .line 2
    iput-object p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "url"

    .line 4
    iput-object p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "phonenumber"

    .line 5
    iput-object p1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iput-object v1, p0, Lcom/connectsdk/core/TextInputStatusInfo;->contentType:Ljava/lang/String;

    :goto_0
    return-void
.end method
