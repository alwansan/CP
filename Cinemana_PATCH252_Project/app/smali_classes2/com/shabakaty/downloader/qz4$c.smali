.class public final Lcom/shabakaty/downloader/qz4$c;
.super Lcom/shabakaty/downloader/qz4;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/qz4$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qz4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qz4$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qz4$c;->b:Lcom/shabakaty/downloader/qz4$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "must have no value parameters"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/qz4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method
