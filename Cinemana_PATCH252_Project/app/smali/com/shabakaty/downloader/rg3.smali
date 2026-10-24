.class public final Lcom/shabakaty/downloader/rg3;
.super Lcom/shabakaty/downloader/af2;
.source "ProfileNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tw2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/rg3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/rg3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rg3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rg3;->r:Lcom/shabakaty/downloader/rg3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tw2;

    const-string v0, "$this$action"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/qg3;->r:Lcom/shabakaty/downloader/qg3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/tw2;->a(Lcom/shabakaty/downloader/tm1;)V

    const/16 v0, 0x1009

    .line 4
    iput v0, p1, Lcom/shabakaty/downloader/tw2;->a:I

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
