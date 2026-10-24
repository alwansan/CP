.class public Lcom/onesignal/e0;
.super Ljava/lang/Object;
.source "OSNotificationOpenedResult.java"

# interfaces
.implements Lcom/onesignal/q0$p;


# instance fields
.field public final a:Lcom/shabakaty/downloader/h43;

.field public final b:Ljava/lang/Runnable;

.field public c:Lcom/shabakaty/downloader/c33;

.field public d:Lcom/shabakaty/downloader/d33;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c33;Lcom/shabakaty/downloader/d33;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/onesignal/e0;->e:Z

    .line 3
    iput-object p1, p0, Lcom/onesignal/e0;->c:Lcom/shabakaty/downloader/c33;

    .line 4
    iput-object p2, p0, Lcom/onesignal/e0;->d:Lcom/shabakaty/downloader/d33;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/h43;->b()Lcom/shabakaty/downloader/h43;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/e0;->a:Lcom/shabakaty/downloader/h43;

    .line 6
    new-instance p2, Lcom/onesignal/e0$a;

    invoke-direct {p2, p0}, Lcom/onesignal/e0$a;-><init>(Lcom/onesignal/e0;)V

    iput-object p2, p0, Lcom/onesignal/e0;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    .line 7
    invoke-virtual {p1, v0, v1, p2}, Lcom/shabakaty/downloader/h43;->c(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/onesignal/q0$n;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSNotificationOpenedResult onEntryStateChange called with appEntryState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lcom/onesignal/q0$n;->t:Lcom/onesignal/q0$n;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onesignal/e0;->b(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSNotificationOpenedResult complete called with opened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/onesignal/e0;->a:Lcom/shabakaty/downloader/h43;

    iget-object v3, p0, Lcom/onesignal/e0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/h43;->a(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean v0, p0, Lcom/onesignal/e0;->e:Z

    if-eqz v0, :cond_0

    const-string p1, "OSNotificationOpenedResult already completed"

    .line 5
    invoke-static {v1, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/onesignal/e0;->e:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/onesignal/e0;->c:Lcom/shabakaty/downloader/c33;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/c33;->d:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/onesignal/q0;->e(Ljava/lang/String;)V

    .line 10
    :cond_1
    sget-object p1, Lcom/onesignal/q0;->a:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OSNotificationOpenedResult{notification="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/e0;->c:Lcom/shabakaty/downloader/c33;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/e0;->d:Lcom/shabakaty/downloader/d33;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/e0;->e:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
