.class public final Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;
.super Ljava/lang/Object;
.source "UserScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/model/UserScheme;->initializeSubjects()Lcom/shabakaty/downloader/q70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/shabakaty/downloader/qv4;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserScheme;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setIdSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getUserNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setUserNameSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getUserNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setFirstNameSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 10
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setLastNameSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_3

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 13
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmailSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_8

    .line 14
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setEmailSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_4

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmailSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 16
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setAccessTokenSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_5

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 19
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getTokenTypeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_c

    .line 20
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setTokenTypeSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_6

    .line 21
    :cond_c
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getTokenTypeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 22
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_e

    .line 23
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setRefreshTokenSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_7

    .line 24
    :cond_e
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 25
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTimeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_10

    .line 26
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setRefreshTimeSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_8

    .line 27
    :cond_10
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTimeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 28
    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmallSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_12

    .line 29
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmall()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setPictureSmallSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_9

    .line 30
    :cond_12
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmallSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 31
    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLargeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_14

    .line 32
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLarge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setPictureLargeSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_a

    .line 33
    :cond_14
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLargeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLarge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    .line 34
    :cond_15
    :goto_a
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-nez v0, :cond_16

    .line 35
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sl;->m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setLoginStateIdSubject(Lcom/shabakaty/downloader/sl;)V

    goto :goto_b

    .line 36
    :cond_16
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$initializeSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sl;->e(Ljava/lang/Object;)V

    :cond_17
    :goto_b
    return-void
.end method
