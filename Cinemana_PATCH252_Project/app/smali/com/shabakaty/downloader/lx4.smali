.class public final Lcom/shabakaty/downloader/lx4;
.super Ljava/lang/Object;
.source "UserActions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lx4$c;,
        Lcom/shabakaty/downloader/lx4$a;,
        Lcom/shabakaty/downloader/lx4$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/ox4;

.field public final c:Lcom/shabakaty/downloader/kf2;

.field public final d:Lcom/shabakaty/downloader/kf2;

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/ox4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Lcom/shabakaty/downloader/ox4;",
            ")V"
        }
    .end annotation

    const-string v0, "videoModelLiveData"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userActionsUseCases"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/lx4$f;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/lx4$f;-><init>(Lcom/shabakaty/downloader/lx4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lx4;->c:Lcom/shabakaty/downloader/kf2;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/lx4$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/lx4$d;-><init>(Lcom/shabakaty/downloader/lx4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lx4;->d:Lcom/shabakaty/downloader/kf2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/lx4$e;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/lx4$e;-><init>(Lcom/shabakaty/downloader/lx4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lx4;->e:Lcom/shabakaty/downloader/kf2;

    return-void
.end method
