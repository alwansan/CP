.class public Lzendesk/support/TicketForm;
.super Ljava/lang/Object;
.source "TicketForm.java"


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field public ticketFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/TicketField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/TicketField;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lzendesk/support/TicketForm;->id:J

    .line 3
    iput-object p3, p0, Lzendesk/support/TicketForm;->name:Ljava/lang/String;

    .line 4
    invoke-static {p4}, Lcom/shabakaty/downloader/h50;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/TicketForm;->ticketFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/TicketForm;->id:J

    return-wide v0
.end method
