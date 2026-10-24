.class public final Lcom/shabakaty/downloader/qz4$d;
.super Lcom/shabakaty/downloader/qz4;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/qz4$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qz4$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qz4$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qz4$d;->b:Lcom/shabakaty/downloader/qz4$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "must have a single value parameter"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/qz4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
