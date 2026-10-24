.class public final Lcom/shabakaty/downloader/uj2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LocaleManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uj2;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Landroid/content/Context;",
        "Lcom/shabakaty/downloader/uj2;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/uj2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/uj2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uj2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uj2$a;->r:Lcom/shabakaty/downloader/uj2$a;

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
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/uj2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/uj2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/nn0;)V

    return-object v0
.end method
