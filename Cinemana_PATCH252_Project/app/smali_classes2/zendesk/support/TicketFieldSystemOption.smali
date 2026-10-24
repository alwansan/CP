.class public Lzendesk/support/TicketFieldSystemOption;
.super Ljava/lang/Object;
.source "TicketFieldSystemOption.java"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/TicketFieldSystemOption;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lzendesk/support/TicketFieldSystemOption;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Lzendesk/support/RawTicketFieldSystemOption;)Lzendesk/support/TicketFieldSystemOption;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/TicketFieldSystemOption;

    .line 2
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldSystemOption;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldSystemOption;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lzendesk/support/TicketFieldSystemOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
