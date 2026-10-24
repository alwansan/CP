.class public final Lcom/shabakaty/downloader/gj3$b;
.super Lcom/shabakaty/downloader/gj3;
.source "ProtoContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/shabakaty/downloader/gj3;-><init>(Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gj3$b;->d:Lcom/shabakaty/downloader/fi1;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gj3$b;->d:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method
