.class public interface abstract Lcom/shabakaty/downloader/az1;
.super Ljava/lang/Object;
.source "ImageInputConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/jn3;


# static fields
.field public static final a:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const/4 v2, 0x0

    const-string v3, "camerax.core.imageInput.inputFormat"

    invoke-direct {v1, v3, v0, v2}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/az1;->a:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method


# virtual methods
.method public abstract i()I
.end method
