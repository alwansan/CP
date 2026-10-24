.class public final Lcom/shabakaty/downloader/lr2$a;
.super Lcom/shabakaty/downloader/lr2;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/lr2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/lr2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lr2$a;->b:Lcom/shabakaty/downloader/lr2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "must be a member function"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/lr2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
