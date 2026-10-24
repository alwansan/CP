.class public final Lcom/shabakaty/downloader/mz$a;
.super Lcom/shabakaty/downloader/af2;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/mz$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/mz$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mz$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mz$a;->r:Lcom/shabakaty/downloader/mz$a;

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
    check-cast p1, Lcom/shabakaty/downloader/xn1;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
