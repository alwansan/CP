.class public final Lcom/shabakaty/downloader/yr3$a$a;
.super Lcom/shabakaty/downloader/yr3;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yr3$a;->a([BLcom/shabakaty/downloader/fr2;II)Lcom/shabakaty/downloader/yr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:Lcom/shabakaty/downloader/fr2;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>([BLcom/shabakaty/downloader/fr2;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yr3$a$a;->b:[B

    iput-object p2, p0, Lcom/shabakaty/downloader/yr3$a$a;->c:Lcom/shabakaty/downloader/fr2;

    iput p3, p0, Lcom/shabakaty/downloader/yr3$a$a;->d:I

    iput p4, p0, Lcom/shabakaty/downloader/yr3$a$a;->e:I

    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yr3$a$a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr3$a$a;->c:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr3$a$a;->b:[B

    iget v1, p0, Lcom/shabakaty/downloader/yr3$a$a;->e:I

    iget v2, p0, Lcom/shabakaty/downloader/yr3$a$a;->d:I

    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/do;->write([BII)Lcom/shabakaty/downloader/do;

    return-void
.end method
