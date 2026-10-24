.class public final Lcom/shabakaty/downloader/b03$d;
.super Lcom/shabakaty/downloader/af2;
.source "NotFoundClasses.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b03;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/fi1;",
        "Lcom/shabakaty/downloader/k93;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/b03;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b03;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/b03$d;->r:Lcom/shabakaty/downloader/b03;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fi1;

    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/y21;

    iget-object v1, p0, Lcom/shabakaty/downloader/b03$d;->r:Lcom/shabakaty/downloader/b03;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/b03;->b:Lcom/shabakaty/downloader/nu2;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/y21;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    return-object v0
.end method
