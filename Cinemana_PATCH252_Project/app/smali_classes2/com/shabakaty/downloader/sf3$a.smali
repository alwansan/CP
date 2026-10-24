.class public final Lcom/shabakaty/downloader/sf3$a;
.super Lcom/shabakaty/downloader/af2;
.source "PrimitiveType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sf3;-><init>(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/fi1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sf3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sf3$a;->r:Lcom/shabakaty/downloader/sf3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    iget-object v1, p0, Lcom/shabakaty/downloader/sf3$a;->r:Lcom/shabakaty/downloader/sf3;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/sf3;->s:Lcom/shabakaty/downloader/hw2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    return-object v0
.end method
