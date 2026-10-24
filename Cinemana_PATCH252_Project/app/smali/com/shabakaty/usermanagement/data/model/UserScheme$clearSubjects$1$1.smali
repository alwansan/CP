.class public final Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;
.super Ljava/lang/Object;
.source "UserScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->call()Lcom/shabakaty/downloader/c80;
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
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setIdSubject(Lcom/shabakaty/downloader/sl;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getUserNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setUserNameSubject(Lcom/shabakaty/downloader/sl;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setFirstNameSubject(Lcom/shabakaty/downloader/sl;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastNameSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setLastNameSubject(Lcom/shabakaty/downloader/sl;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmailSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setEmailSubject(Lcom/shabakaty/downloader/sl;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setAccessTokenSubject(Lcom/shabakaty/downloader/sl;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getTokenTypeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setTokenTypeSubject(Lcom/shabakaty/downloader/sl;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTokenSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setRefreshTokenSubject(Lcom/shabakaty/downloader/sl;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTimeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setRefreshTimeSubject(Lcom/shabakaty/downloader/sl;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmallSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setPictureSmallSubject(Lcom/shabakaty/downloader/sl;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLargeSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 22
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setPictureLargeSubject(Lcom/shabakaty/downloader/sl;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateIdSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$clearSubjects$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->setLoginStateIdSubject(Lcom/shabakaty/downloader/sl;)V

    :cond_b
    return-void
.end method
