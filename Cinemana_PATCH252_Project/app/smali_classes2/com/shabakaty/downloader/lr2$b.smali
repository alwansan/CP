.class public final Lcom/shabakaty/downloader/lr2$b;
.super Lcom/shabakaty/downloader/lr2;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/lr2$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/lr2$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr2$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lr2$b;->b:Lcom/shabakaty/downloader/lr2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "must be a member or an extension function"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/lr2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
