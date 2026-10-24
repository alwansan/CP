.class public final Lcom/shabakaty/cinemana/ui/home_activity/b;
.super Lcom/shabakaty/downloader/af2;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/u7;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/cinemana/ui/home_activity/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/ui/home_activity/b;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ui/home_activity/b;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ui/home_activity/b;->r:Lcom/shabakaty/cinemana/ui/home_activity/b;

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
    check-cast p1, Lcom/shabakaty/downloader/u7;

    const-string v0, "$this$anim"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f01002f

    .line 3
    iput v0, p1, Lcom/shabakaty/downloader/u7;->d:I

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
