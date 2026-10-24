.class public final Lcom/shabakaty/downloader/bd2$a$b;
.super Lcom/shabakaty/downloader/af2;
.source "KPackageImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bd2$a;-><init>(Lcom/shabakaty/downloader/bd2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/ac2<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2;

.field public final synthetic s:Lcom/shabakaty/downloader/bd2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2;Lcom/shabakaty/downloader/bd2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$a$b;->r:Lcom/shabakaty/downloader/bd2;

    iput-object p2, p0, Lcom/shabakaty/downloader/bd2$a$b;->s:Lcom/shabakaty/downloader/bd2$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2$a$b;->r:Lcom/shabakaty/downloader/bd2;

    iget-object v1, p0, Lcom/shabakaty/downloader/bd2$a$b;->s:Lcom/shabakaty/downloader/bd2$a;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/bd2$a;->d:Lcom/shabakaty/downloader/cq3$a;

    sget-object v2, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-scope>(...)"

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/mr2;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/oc2$c;->r:Lcom/shabakaty/downloader/oc2$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/oc2;->h(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/oc2$c;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
