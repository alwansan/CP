.class public final Lcom/shabakaty/downloader/uo4$c;
.super Ljava/lang/Object;
.source "TraceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uo4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/im2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/im2<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c75;->B:Lcom/shabakaty/downloader/c75;

    sget-object v1, Lcom/shabakaty/downloader/c75;->v:Lcom/shabakaty/downloader/c75;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/im2;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/shabakaty/downloader/im2;-><init>(Lcom/shabakaty/downloader/c75;Ljava/lang/Object;Lcom/shabakaty/downloader/c75;Ljava/lang/Object;)V

    .line 4
    sput-object v3, Lcom/shabakaty/downloader/uo4$c;->a:Lcom/shabakaty/downloader/im2;

    return-void
.end method
