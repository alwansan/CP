.class public final Lcom/shabakaty/downloader/e64;
.super Lcom/shabakaty/downloader/af2;
.source "signatureEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/o82;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:[Lcom/shabakaty/downloader/o82;


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/o82;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/e64;->r:[Lcom/shabakaty/downloader/o82;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e64;->r:[Lcom/shabakaty/downloader/o82;

    if-ltz p1, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->S([Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/o82;->e:Lcom/shabakaty/downloader/o82;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/o82;->e:Lcom/shabakaty/downloader/o82;

    sget-object p1, Lcom/shabakaty/downloader/o82;->f:Lcom/shabakaty/downloader/o82;

    :goto_0
    return-object p1
.end method
