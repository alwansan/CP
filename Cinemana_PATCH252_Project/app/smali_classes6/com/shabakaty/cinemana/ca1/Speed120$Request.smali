.class final Lcom/shabakaty/cinemana/ca1/Speed120$Request;
.super Ljava/lang/Object;
.source "Speed120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Speed120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Request"
.end annotation


# instance fields
.field final id:I

.field final size:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    iput p2, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->size:I

    return-void
.end method
