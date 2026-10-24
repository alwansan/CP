.class public Lcom/onesignal/f0$a;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/m73;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/f0;->b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/n33;

.field public final synthetic b:Lcom/onesignal/q0$w;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/onesignal/f0;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;Lcom/onesignal/q0$w;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/f0$a;->e:Lcom/onesignal/f0;

    iput-object p2, p0, Lcom/onesignal/f0$a;->a:Lcom/shabakaty/downloader/n33;

    iput-object p3, p0, Lcom/onesignal/f0$a;->b:Lcom/onesignal/q0$w;

    iput-wide p4, p0, Lcom/onesignal/f0$a;->c:J

    iput-object p6, p0, Lcom/onesignal/f0$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/onesignal/f0$a;->e:Lcom/onesignal/f0;

    iget-object v0, p0, Lcom/onesignal/f0$a;->a:Lcom/shabakaty/downloader/n33;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    if-nez v2, :cond_0

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p1, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    iget-object p1, p1, Lcom/onesignal/f0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/t33;->c(Ljava/util/Set;)V

    goto :goto_2

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shabakaty/downloader/s33;

    invoke-direct {v2, p1, v0}, Lcom/shabakaty/downloader/s33;-><init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;)V

    const-string p1, "OS_SAVE_UNIQUE_OUTCOME_NOTIFICATIONS"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 9
    :goto_2
    iget-object p1, p0, Lcom/onesignal/f0$a;->b:Lcom/onesignal/q0$w;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/onesignal/f0$a;->a:Lcom/shabakaty/downloader/n33;

    invoke-static {v0}, Lcom/shabakaty/downloader/m33;->a(Lcom/shabakaty/downloader/n33;)Lcom/shabakaty/downloader/m33;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onesignal/q0$w;->a(Lcom/shabakaty/downloader/m33;)V

    :cond_3
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/f0$a$a;

    invoke-direct {v0, p0}, Lcom/onesignal/f0$a$a;-><init>(Lcom/onesignal/f0$a;)V

    const-string v1, "OS_SAVE_OUTCOMES"

    invoke-direct {p3, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending outcome with name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onesignal/f0$a;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed with status code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and response: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nOutcome event was cached and will be reattempted on app cold start"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 4
    invoke-static {p2, p1, p3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/onesignal/f0$a;->b:Lcom/onesignal/q0$w;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p3}, Lcom/onesignal/q0$w;->a(Lcom/shabakaty/downloader/m33;)V

    :cond_0
    return-void
.end method
