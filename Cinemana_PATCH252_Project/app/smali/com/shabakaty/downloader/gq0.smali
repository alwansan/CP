.class public final Lcom/shabakaty/downloader/gq0;
.super Ljava/lang/Object;
.source "DependencyContainer.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/kf2;

.field public final b:Lcom/shabakaty/downloader/kf2;

.field public final c:Lcom/shabakaty/downloader/kf2;

.field public d:Lcom/shabakaty/downloader/g41;

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/k41;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/gq0$d;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/gq0$d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gq0;->a:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/gq0$c;->r:Lcom/shabakaty/downloader/gq0$c;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gq0;->b:Lcom/shabakaty/downloader/kf2;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/gq0$a;->r:Lcom/shabakaty/downloader/gq0$a;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gq0;->c:Lcom/shabakaty/downloader/kf2;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/gq0$b;

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/gq0$b;-><init>(Lcom/shabakaty/downloader/k41;Lcom/shabakaty/downloader/gq0;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gq0;->e:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/ny2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gq0;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ny2;

    return-object v0
.end method
