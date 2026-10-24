.class public final Lcom/shabakaty/downloader/yr3$a;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BLcom/shabakaty/downloader/fr2;II)Lcom/shabakaty/downloader/yr3;
    .locals 7

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/ry4;->c(JJJ)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yr3$a$a;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/shabakaty/downloader/yr3$a$a;-><init>([BLcom/shabakaty/downloader/fr2;II)V

    return-object v0
.end method
