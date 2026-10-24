.class public final Lcom/shabakaty/downloader/ot3$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ot3$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/zd2;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ot3$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ot3$a$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ot3$a$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ot3$a$a;->r:Lcom/shabakaty/downloader/ot3$a$a;

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
    check-cast p1, Lcom/shabakaty/downloader/zd2;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/sf3;->w:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x3f

    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
