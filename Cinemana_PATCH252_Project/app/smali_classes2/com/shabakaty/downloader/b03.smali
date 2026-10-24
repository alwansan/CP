.class public final Lcom/shabakaty/downloader/b03;
.super Ljava/lang/Object;
.source "NotFoundClasses.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b03$a;,
        Lcom/shabakaty/downloader/b03$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/md4;

.field public final b:Lcom/shabakaty/downloader/nu2;

.field public final c:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/k93;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/b03$a;",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b03;->a:Lcom/shabakaty/downloader/md4;

    iput-object p2, p0, Lcom/shabakaty/downloader/b03;->b:Lcom/shabakaty/downloader/nu2;

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/b03$d;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/b03$d;-><init>(Lcom/shabakaty/downloader/b03;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/b03;->c:Lcom/shabakaty/downloader/qr2;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/b03$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/b03$c;-><init>(Lcom/shabakaty/downloader/b03;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/b03;->d:Lcom/shabakaty/downloader/qr2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v20;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/shabakaty/downloader/q20;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b03;->d:Lcom/shabakaty/downloader/qr2;

    new-instance v1, Lcom/shabakaty/downloader/b03$a;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/b03$a;-><init>(Lcom/shabakaty/downloader/v20;Ljava/util/List;)V

    check-cast v0, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q20;

    return-object p1
.end method
