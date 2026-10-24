.class public final Lcom/shabakaty/downloader/lo$a;
.super Ljava/lang/Object;
.source "BuiltInsLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/lo$a;

.field public static final b:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Lcom/shabakaty/downloader/lo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/lo$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lo$a;->a:Lcom/shabakaty/downloader/lo$a;

    .line 1
    sget-object v0, Lkotlin/a;->s:Lkotlin/a;

    sget-object v1, Lcom/shabakaty/downloader/lo$a$a;->r:Lcom/shabakaty/downloader/lo$a$a;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lo$a;->b:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
