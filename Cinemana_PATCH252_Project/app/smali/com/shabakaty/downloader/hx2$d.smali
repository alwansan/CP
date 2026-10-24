.class public final Lcom/shabakaty/downloader/hx2$d;
.super Lcom/shabakaty/downloader/af2;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/hx2;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/cu3;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/hx2$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hx2$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hx2$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hx2$d;->r:Lcom/shabakaty/downloader/hx2$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cu3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cu3;-><init>()V

    return-object v0
.end method
