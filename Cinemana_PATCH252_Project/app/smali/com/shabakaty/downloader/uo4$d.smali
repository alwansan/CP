.class public final Lcom/shabakaty/downloader/uo4$d;
.super Ljava/lang/Object;
.source "TraceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uo4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/im2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/im2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c75;->B:Lcom/shabakaty/downloader/c75;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/im2;

    const-string v2, ""

    invoke-direct {v1, v0, v2, v0, v2}, Lcom/shabakaty/downloader/im2;-><init>(Lcom/shabakaty/downloader/c75;Ljava/lang/Object;Lcom/shabakaty/downloader/c75;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/uo4$d;->a:Lcom/shabakaty/downloader/im2;

    return-void
.end method
