.class public interface abstract Lcom/shabakaty/downloader/kx4;
.super Ljava/lang/Object;
.source "UseCaseEventConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/jn3;


# static fields
.field public static final q:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/cx4$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/shabakaty/downloader/cx4$a;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const/4 v2, 0x0

    const-string v3, "camerax.core.useCaseEventCallback"

    invoke-direct {v1, v3, v0, v2}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/kx4;->q:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method


# virtual methods
.method public abstract k(Lcom/shabakaty/downloader/cx4$a;)Lcom/shabakaty/downloader/cx4$a;
.end method
