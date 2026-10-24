.class public final Lcom/shabakaty/downloader/ka4$b;
.super Lcom/shabakaty/downloader/af2;
.source "SplashViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ka4;-><init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/ou1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/a63;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ka4$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ka4$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka4$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ka4$b;->r:Lcom/shabakaty/downloader/ka4$b;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/a63;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-object v1
.end method
