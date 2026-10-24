.class public final Lcom/shabakaty/downloader/bd2$a$a;
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
        "Lcom/shabakaty/downloader/yp3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$a$a;->r:Lcom/shabakaty/downloader/bd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2$a$a;->r:Lcom/shabakaty/downloader/bd2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/yp3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/yp3;

    move-result-object v0

    return-object v0
.end method
