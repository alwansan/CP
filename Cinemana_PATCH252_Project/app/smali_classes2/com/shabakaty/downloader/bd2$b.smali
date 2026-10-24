.class public final Lcom/shabakaty/downloader/bd2$b;
.super Lcom/shabakaty/downloader/af2;
.source "KPackageImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bd2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/bd2$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$b;->r:Lcom/shabakaty/downloader/bd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bd2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/bd2$b;->r:Lcom/shabakaty/downloader/bd2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bd2$a;-><init>(Lcom/shabakaty/downloader/bd2;)V

    return-object v0
.end method
