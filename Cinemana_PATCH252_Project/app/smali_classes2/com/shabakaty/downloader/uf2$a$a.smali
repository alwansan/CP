.class public final Lcom/shabakaty/downloader/uf2$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uf2$a;-><init>(Lcom/shabakaty/downloader/uf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/kt4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2$a$a;->r:Lcom/shabakaty/downloader/uf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2$a$a;->r:Lcom/shabakaty/downloader/uf2;

    invoke-static {v0}, Lcom/shabakaty/downloader/pt4;->b(Lcom/shabakaty/downloader/h30;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
