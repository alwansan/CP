.class public interface abstract Lcom/shabakaty/downloader/qk4;
.super Ljava/lang/Object;
.source "TargetConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/jn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/jn3;"
    }
.end annotation


# static fields
.field public static final h:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.target.name"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/qk4;->h:Lcom/shabakaty/downloader/o90$a;

    .line 4
    const-class v0, Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.target.class"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/qk4;->i:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method


# virtual methods
.method public abstract m(Ljava/lang/String;)Ljava/lang/String;
.end method
