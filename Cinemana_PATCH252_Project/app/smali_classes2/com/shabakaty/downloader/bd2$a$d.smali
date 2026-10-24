.class public final Lcom/shabakaty/downloader/bd2$a$d;
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
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2$a;

.field public final synthetic s:Lcom/shabakaty/downloader/bd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2$a;Lcom/shabakaty/downloader/bd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$a$d;->r:Lcom/shabakaty/downloader/bd2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/bd2$a$d;->s:Lcom/shabakaty/downloader/bd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2$a$d;->r:Lcom/shabakaty/downloader/bd2$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/bd2$a;->a(Lcom/shabakaty/downloader/bd2$a;)Lcom/shabakaty/downloader/yp3;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/be2;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/bd2$a$d;->s:Lcom/shabakaty/downloader/bd2;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_2
    return-object v1
.end method
