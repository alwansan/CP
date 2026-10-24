.class public final Lcom/shabakaty/downloader/fw1$e;
.super Lcom/shabakaty/downloader/fw1$c;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final s:I

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/shabakaty/downloader/yl0;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/shabakaty/downloader/yl0;",
            "[B)V"
        }
    .end annotation

    const/16 p2, 0x1a

    const-string p6, "Response code: "

    .line 1
    invoke-static {p2, p6, p1}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/fw1$e;->s:I

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/fw1$e;->t:Ljava/util/Map;

    return-void
.end method
